use std::os::raw::{c_char};
use std::ffi::{CString, CStr};

#[no_mangle]
pub extern fn rust_get(c_url: *const c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(c_url) };
    let url = match c_str.to_str() {
        Ok(string) => string,
        _ => unreachable!()
    };
    let res = match reqwest::blocking::get(url) {
        Ok(res) => res,
        _ => unreachable!()
    };
    let body = match res.text() {
        Ok(body) => body,
        _ => unreachable!()
    };
    CString::new(body).unwrap().into_raw()
}

#[no_mangle]
pub extern fn rust_free(s: *mut c_char) {
    unsafe {
        if s.is_null() { return }
        CString::from_raw(s)
    };
}

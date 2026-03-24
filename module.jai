#if OS == .WINDOWS {
    #assert false "Your OS is not supported.";
}

#if OS == {
    case .LINUX;
        #load "linux/bindings.jai";
    case .MACOS;
        #load "macos/bindings.jai";
}

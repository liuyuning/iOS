


+(NSString *)currentWifiBSSID {
    
    NSString *bssid = nil;
    NSArray *ifs = (__bridge NSArray *)(CNCopySupportedInterfaces());
    for (NSString *ifnam in ifs) {
        NSDictionary *info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifnam);
        
        //        info:
        //        {
        //            BSSID = "e4:ce:8f:62:11:da";
        //            SSID = "\U751f\U4e8e\U5fe7\U60a3\Uff0c\U6b7b\U4e8e\U5b89\U4e50";//生于忧患，死于安乐
        //            SSIDDATA = <e7949fe4 ba8ee5bf a7e682a3 efbc8ce6 adbbe4ba 8ee5ae89 e4b990>;
        //        }
        
        NSLog(@"info:%@",info);
        
        if (info[@"BSSID"]) {
            bssid = info[@"BSSID"];
        }
    }
    return bssid;
}

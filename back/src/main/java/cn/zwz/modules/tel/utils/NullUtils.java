package cn.zwz.modules.tel.utils;

public class NullUtils {
    public static boolean isNull(String str){
        if(str == null || str.equals("") || str.equals("null") || str.equals("undefined")) return true;
        return false;
    }
}

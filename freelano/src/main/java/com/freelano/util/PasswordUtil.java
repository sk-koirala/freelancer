package com.freelano.util;

import java.security.*;

public class PasswordUtil {
  public static String hash(String pw) {
    try {
      MessageDigest md = MessageDigest.getInstance("SHA-256");
      byte[] dig = md.digest(pw.getBytes("UTF-8"));
      StringBuilder sb = new StringBuilder();
      for (byte b: dig) sb.append(String.format("%02x", b));
      return sb.toString();
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }
}


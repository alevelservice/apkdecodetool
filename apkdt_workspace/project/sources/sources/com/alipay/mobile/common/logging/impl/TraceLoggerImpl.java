package com.alipay.mobile.common.logging.impl;

import android.text.TextUtils;
import com.alipay.mobile.common.logging.SyncLogUtil;
import com.alipay.mobile.common.logging.api.trace.TraceLogger;

/* loaded from: classes.dex */
public class TraceLoggerImpl implements TraceLogger {
    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void debug(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void error(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void info(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void print(String str, String str2) {
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void verbose(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void warn(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void error(String str, Throwable th) {
        if (!TextUtils.isEmpty(str) && SyncLogUtil.isDebuggable()) {
            th.getMessage();
        }
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void print(String str, Throwable th) {
        if (TextUtils.isEmpty(str) || th == null || !SyncLogUtil.isDebuggable()) {
            return;
        }
        th.getMessage();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void warn(String str, Throwable th) {
        if (TextUtils.isEmpty(str) || th == null || !SyncLogUtil.isDebuggable()) {
            return;
        }
        th.getMessage();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void error(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }

    @Override // com.alipay.mobile.common.logging.api.trace.TraceLogger
    public void warn(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SyncLogUtil.isDebuggable();
    }
}

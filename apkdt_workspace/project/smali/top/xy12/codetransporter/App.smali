.class public Ltop/xy12/codetransporter/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-virtual {p0}, Ltop/xy12/codetransporter/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltop/xy12/codetransporter/App;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    .line 19
    invoke-virtual {p0}, Ltop/xy12/codetransporter/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "f210ee8b66"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

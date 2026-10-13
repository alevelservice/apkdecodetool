.class final Lcom/baseflow/permissionhandler/t;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/t$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_providers_allowed"

    .line 23
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 4
    invoke-static {p1}, Lcom/baseflow/permissionhandler/t;->c(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/baseflow/permissionhandler/t;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    .line 3
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method a(ILandroid/content/Context;Lcom/baseflow/permissionhandler/t$a;Lcom/baseflow/permissionhandler/o;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p1, "PermissionHandler.ServiceManager"

    const-string p2, "Android context cannot be null."

    .line 1
    invoke-interface {p4, p1, p2}, Lcom/baseflow/permissionhandler/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p4, 0x3

    if-eq p1, p4, :cond_a

    const/4 p4, 0x4

    if-eq p1, p4, :cond_a

    const/4 p4, 0x5

    if-ne p1, p4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_7

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.telephony"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    :cond_2
    const-string v0, "phone"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_6

    .line 6
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:123123"

    .line 8
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    if-eq p1, p4, :cond_5

    .line 13
    invoke-interface {p3, v3}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    .line 14
    :cond_5
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    .line 15
    :cond_6
    :goto_0
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    :cond_7
    const/16 p2, 0xf

    if-ne p1, p2, :cond_9

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x2

    .line 17
    :goto_1
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    .line 18
    :cond_9
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void

    .line 19
    :cond_a
    :goto_2
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/t;->b(Landroid/content/Context;)Z

    move-result p1

    .line 20
    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/t$a;->a(I)V

    return-void
.end method

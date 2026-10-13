.class Lio/flutter/plugins/a/c;
.super Ljava/lang/Object;
.source "ConnectivityMethodChannelHandler.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private e:Lio/flutter/plugins/a/a;


# direct methods
.method constructor <init>(Lio/flutter/plugins/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/a/c;->e:Lio/flutter/plugins/a/a;

    return-void
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "wifiIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "wifiBSSID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "wifiName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/a/c;->e:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lio/flutter/plugins/a/c;->e:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lio/flutter/plugins/a/c;->e:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_4
    iget-object p1, p0, Lio/flutter/plugins/a/c;->e:Lio/flutter/plugins/a/a;

    invoke-virtual {p1}, Lio/flutter/plugins/a/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4feaf4c0 -> :sswitch_3
        0x5a3e508 -> :sswitch_2
        0x51dc80c8 -> :sswitch_1
        0x68b55958 -> :sswitch_0
    .end sparse-switch
.end method

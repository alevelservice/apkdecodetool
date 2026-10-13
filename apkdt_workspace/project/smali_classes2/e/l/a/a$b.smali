.class Le/l/a/a$b;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l/a/a;


# direct methods
.method constructor <init>(Le/l/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/a$b;->a:Le/l/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2

    const-string p2, "$"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ","

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    aget-object p2, p1, p2

    const-string p3, "$GPGGA"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    array-length p2, p1

    const/16 p3, 0x9

    if-lt p2, p3, :cond_0

    aget-object p2, p1, p3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Le/l/a/a$b;->a:Le/l/a/a;

    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1}, Le/l/a/a;->a(Le/l/a/a;Ljava/lang/Double;)Ljava/lang/Double;

    :cond_0
    return-void
.end method

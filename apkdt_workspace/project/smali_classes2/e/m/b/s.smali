.class public Le/m/b/s;
.super Lio/flutter/plugin/platform/g;
.source "MapboxMapFactory.java"


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Lg/a/c/a/m$d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/c/a/n;->a:Lg/a/c/a/n;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/g;-><init>(Lg/a/c/a/i;)V

    .line 2
    iput-object p1, p0, Le/m/b/s;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p2, p0, Le/m/b/s;->c:Lg/a/c/a/m$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;
    .locals 6

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    new-instance v0, Le/m/b/q;

    invoke-direct {v0}, Le/m/b/q;-><init>()V

    const-string v1, "options"

    .line 3
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/t;)V

    const-string v1, "initialCameraPosition"

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->b(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Le/m/b/q;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    .line 7
    :cond_0
    iget-object v3, p0, Le/m/b/s;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Le/m/b/s;->c:Lg/a/c/a/m$d;

    const-string v1, "accessToken"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    move v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Le/m/b/q;->a(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;Ljava/lang/String;)Le/m/b/r;

    move-result-object p1

    return-object p1
.end method

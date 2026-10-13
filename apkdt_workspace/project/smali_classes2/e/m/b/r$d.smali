.class Le/m/b/r$d;
.super Ljava/lang/Object;
.source "MapboxMapController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/b/r;->onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Le/m/b/r;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/b/r$d;->a:Lg/a/c/a/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Le/m/b/r$d;->a:Lg/a/c/a/k$d;

    const-string v1, "MAPBOX CACHE ERROR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/r$d;->a:Lg/a/c/a/k$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

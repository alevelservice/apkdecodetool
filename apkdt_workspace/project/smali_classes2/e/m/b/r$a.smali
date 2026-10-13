.class Le/m/b/r$a;
.super Ljava/lang/Object;
.source "MapboxMapController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/m/b/r;


# direct methods
.method constructor <init>(Le/m/b/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->a(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;

    .line 2
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->b(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 3
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->c(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 4
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->d(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 5
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->e(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 6
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0}, Le/m/b/r;->b(Le/m/b/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0, p1}, Le/m/b/r;->f(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 8
    :cond_0
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0}, Le/m/b/r;->c(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v0

    iget-object v1, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    .line 9
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v0}, Le/m/b/r;->c(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v0

    iget-object v1, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    .line 10
    iget-object v0, p0, Le/m/b/r$a;->a:Le/m/b/r;

    new-instance v1, Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-static {v0}, Le/m/b/r;->d(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/MapView;

    move-result-object v2

    iget-object v3, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {v3}, Le/m/b/r;->c(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/mapbox/mapboxsdk/plugins/localization/a;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V

    invoke-static {v0, v1}, Le/m/b/r;->a(Le/m/b/r;Lcom/mapbox/mapboxsdk/plugins/localization/a;)Lcom/mapbox/mapboxsdk/plugins/localization/a;

    .line 11
    iget-object p1, p0, Le/m/b/r$a;->a:Le/m/b/r;

    invoke-static {p1}, Le/m/b/r;->a(Le/m/b/r;)Lg/a/c/a/k;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "map#onStyleLoaded"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Le/m/b/n;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Le/m/b/p;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/t/a/p;

.field private final b:Lcom/mapbox/mapboxsdk/t/a/q;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/n;->a:Lcom/mapbox/mapboxsdk/t/a/p;

    .line 3
    new-instance p1, Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/t/a/q;-><init>()V

    iput-object p1, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/mapboxsdk/t/a/n;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/n;->a:Lcom/mapbox/mapboxsdk/t/a/p;

    iget-object v1, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/y;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/n;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->a(Ljava/util/List;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->a(Z)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/n;->b:Lcom/mapbox/mapboxsdk/t/a/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/q;->a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;

    return-void
.end method

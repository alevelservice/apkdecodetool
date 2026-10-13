.class Lcom/mapbox/mapboxsdk/location/q;
.super Ljava/lang/Object;
.source "LocationPropertyFactory.java"


# direct methods
.method public static a(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "accuracy-radius-border-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Double;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "bearing"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "accuracy-radius"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/a;

    const-string v1, "bearing-image"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a([Ljava/lang/Double;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Double;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "location"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "accuracy-radius-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "image-tilt-displacement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/a;

    const-string v1, "shadow-image"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "bearing-image-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "perspective-compensation"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/a;

    const-string v1, "top-image"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "shadow-image-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/a;

    const-string v1, "visibility"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Lcom/mapbox/mapboxsdk/u/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    const-string v1, "top-image-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.class public Lcom/mapbox/mapboxsdk/t/a/f;
.super Lcom/mapbox/mapboxsdk/t/a/y;
.source "CircleOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/y<",
        "Lcom/mapbox/mapboxsdk/t/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/google/gson/JsonElement;

.field private c:Lcom/mapbox/geojson/Point;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Float;

.field private g:Ljava/lang/Float;

.field private h:Ljava/lang/Float;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/t/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/t/a/f;->a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/c;

    move-result-object p1

    return-object p1
.end method

.method a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/c;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/t/a/c;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->c:Lcom/mapbox/geojson/Point;

    if-eqz v0, :cond_0

    .line 7
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->d:Ljava/lang/Float;

    const-string v1, "circle-radius"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->e:Ljava/lang/String;

    const-string v1, "circle-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->f:Ljava/lang/Float;

    const-string v1, "circle-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->g:Ljava/lang/Float;

    const-string v1, "circle-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->h:Ljava/lang/Float;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->i:Ljava/lang/String;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/f;->j:Ljava/lang/Float;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/c;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/t/a/f;->c:Lcom/mapbox/geojson/Point;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/t/a/c;-><init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V

    .line 16
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->a:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    .line 17
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->b:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->c:Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->f:Ljava/lang/Float;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->a:Z

    return-object p0
.end method

.method public b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->g:Ljava/lang/Float;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->d:Ljava/lang/Float;

    return-object p0
.end method

.method public d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->j:Ljava/lang/Float;

    return-object p0
.end method

.method public e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/f;->h:Ljava/lang/Float;

    return-object p0
.end method

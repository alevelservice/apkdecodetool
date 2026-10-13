.class public Lcom/mapbox/mapboxsdk/t/a/c0;
.super Lcom/mapbox/mapboxsdk/t/a/y;
.source "SymbolOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/y<",
        "Lcom/mapbox/mapboxsdk/t/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/Float;

.field private D:Ljava/lang/Float;

.field private a:Z

.field private b:Lcom/google/gson/JsonElement;

.field private c:Lcom/mapbox/geojson/Point;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/Float;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Float;

.field private h:[Ljava/lang/Float;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Ljava/lang/Float;

.field private m:Ljava/lang/Float;

.field private n:Ljava/lang/Float;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Float;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Float;

.field private s:Ljava/lang/String;

.field private t:[Ljava/lang/Float;

.field private u:Ljava/lang/Float;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/Float;

.field private y:Ljava/lang/Float;

.field private z:Ljava/lang/Float;


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
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/t/a/c0;->a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/z;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->c:Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->y:Ljava/lang/Float;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->a:Z

    return-object p0
.end method

.method public a([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->h:[Ljava/lang/Float;

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->k:[Ljava/lang/String;

    return-object p0
.end method

.method a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/z;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/t/a/z;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->c:Lcom/mapbox/geojson/Point;

    if-eqz v0, :cond_0

    .line 9
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->d:Ljava/lang/Float;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->e:Ljava/lang/Float;

    const-string v1, "icon-size"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->f:Ljava/lang/String;

    const-string v1, "icon-image"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->g:Ljava/lang/Float;

    const-string v1, "icon-rotate"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->h:[Ljava/lang/Float;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/g;->a([Ljava/lang/Float;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "icon-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->i:Ljava/lang/String;

    const-string v1, "icon-anchor"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->j:Ljava/lang/String;

    const-string v1, "text-field"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->k:[Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/g;->a([Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "text-font"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->l:Ljava/lang/Float;

    const-string v1, "text-size"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->m:Ljava/lang/Float;

    const-string v1, "text-max-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->n:Ljava/lang/Float;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->o:Ljava/lang/String;

    const-string v1, "text-justify"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->p:Ljava/lang/Float;

    const-string v1, "text-radial-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->q:Ljava/lang/String;

    const-string v1, "text-anchor"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->r:Ljava/lang/Float;

    const-string v1, "text-rotate"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->s:Ljava/lang/String;

    const-string v1, "text-transform"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->t:[Ljava/lang/Float;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/g;->a([Ljava/lang/Float;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "text-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->u:Ljava/lang/Float;

    const-string v1, "icon-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 28
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->v:Ljava/lang/String;

    const-string v1, "icon-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->w:Ljava/lang/String;

    const-string v1, "icon-halo-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->x:Ljava/lang/Float;

    const-string v1, "icon-halo-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 31
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->y:Ljava/lang/Float;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->z:Ljava/lang/Float;

    const-string v1, "text-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->A:Ljava/lang/String;

    const-string v1, "text-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->B:Ljava/lang/String;

    const-string v1, "text-halo-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->C:Ljava/lang/Float;

    const-string v1, "text-halo-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 36
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->D:Ljava/lang/Float;

    const-string v1, "text-halo-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/z;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->c:Lcom/mapbox/geojson/Point;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/t/a/z;-><init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V

    .line 38
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->a:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    .line 39
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->b:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->v:Ljava/lang/String;

    return-object p0
.end method

.method public b([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->t:[Ljava/lang/Float;

    return-object p0
.end method

.method public c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->u:Ljava/lang/Float;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->w:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->g:Ljava/lang/Float;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->e:Ljava/lang/Float;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->q:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->d:Ljava/lang/Float;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->A:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->D:Ljava/lang/Float;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->j:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->C:Ljava/lang/Float;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->B:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->n:Ljava/lang/Float;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->o:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->m:Ljava/lang/Float;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->s:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->z:Ljava/lang/Float;

    return-object p0
.end method

.method public l(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->r:Ljava/lang/Float;

    return-object p0
.end method

.method public m(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/c0;->l:Ljava/lang/Float;

    return-object p0
.end method

.class public Lcom/mapbox/mapboxsdk/style/layers/d;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 3
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/mapbox/mapboxsdk/u/a/a;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s not an expression, try PropertyValue#getValue()"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-PropertyValue"

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/gson/JsonArray;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/mapbox/mapboxsdk/u/a/a;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 5
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 6
    check-cast v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_3
    iget-object p1, p1, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    iget-object p1, p1, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

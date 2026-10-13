.class public abstract Lcom/mapbox/mapboxsdk/annotations/a;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mapbox/mapboxsdk/annotations/a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private e:J

.field protected f:Lcom/mapbox/mapboxsdk/maps/n;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/annotations/a;)I
    .locals 5
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/a;->f:Lcom/mapbox/mapboxsdk/maps/n;

    return-void
.end method

.method protected b()Lcom/mapbox/mapboxsdk/maps/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/a;->f:Lcom/mapbox/mapboxsdk/maps/n;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/a;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a(Lcom/mapbox/mapboxsdk/annotations/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    instance-of v2, p1, Lcom/mapbox/mapboxsdk/annotations/a;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/a;

    .line 3
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/annotations/a;->e:J

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

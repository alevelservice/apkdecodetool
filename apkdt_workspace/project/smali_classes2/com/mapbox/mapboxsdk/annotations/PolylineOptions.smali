.class public final Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/mapbox/mapboxsdk/annotations/Polyline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$a;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$a;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    const-class v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a(Ljava/lang/Iterable;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a(I)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->b(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapbox/mapboxsdk/annotations/PolylineOptions$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;->c()F

    move-result v0

    return v0
.end method

.method public a(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;->a(F)V

    return-object p0
.end method

.method public a(I)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->a(I)V

    return-object p0
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 3
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->f()I

    move-result v0

    return v0
.end method

.method public b(F)Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->b(F)V

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->e:Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->g()F

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1
    const-class v2, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a()F

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->b()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->d()F

    move-result v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->d()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->b()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->d()F

    move-result v4

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->c()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->a()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->d()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.class public abstract Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
.super Ljava/lang/Object;
.source "BaseMarkerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/mapbox/mapboxsdk/annotations/Marker;",
        "T:",
        "Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions<",
        "TU;TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected e:Lcom/mapbox/mapboxsdk/geometry/LatLng;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/mapbox/mapboxsdk/annotations/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public a(Lcom/mapbox/mapboxsdk/annotations/d;)Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/annotations/d;",
            ")TT;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->h:Lcom/mapbox/mapboxsdk/annotations/d;

    .line 6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->a()Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->e:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->a()Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->a()Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;->a()Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;

    move-result-object p1

    return-object p1
.end method

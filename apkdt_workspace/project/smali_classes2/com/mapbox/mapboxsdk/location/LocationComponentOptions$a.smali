.class final Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;
.super Ljava/lang/Object;
.source "LocationComponentOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 1

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-direct {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;->createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;->newArray(I)[Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p1

    return-object p1
.end method

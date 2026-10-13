.class Lcom/mapbox/mapboxsdk/location/o$d;
.super Ljava/lang/Object;
.source "LocationLayerController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/location/r$b<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/location/o;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o$d;->a:Lcom/mapbox/mapboxsdk/location/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o$d;->a:Lcom/mapbox/mapboxsdk/location/o;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/location/o;)Lcom/mapbox/mapboxsdk/location/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/p;->c(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/o$d;->a(Ljava/lang/Float;)V

    return-void
.end method

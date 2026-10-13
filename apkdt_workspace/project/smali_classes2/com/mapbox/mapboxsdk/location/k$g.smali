.class Lcom/mapbox/mapboxsdk/location/k$g;
.super Ljava/lang/Object;
.source "LocationComponent.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/location/k;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k$g;->a:Lcom/mapbox/mapboxsdk/location/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$g;->a:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->l(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/maps/n$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/n$e;->a()V

    return-void
.end method

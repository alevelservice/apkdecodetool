.class Lcom/mapbox/mapboxsdk/location/k$i;
.super Ljava/lang/Object;
.source "LocationComponent.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/location/k;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->g(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/location/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/i;->c()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->g(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/location/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/i;->b()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->c(Lcom/mapbox/mapboxsdk/location/k;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->b(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/location/x;

    .line 5
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/location/x;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$i;->e:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->b(Lcom/mapbox/mapboxsdk/location/k;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/location/x;

    .line 2
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/location/x;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

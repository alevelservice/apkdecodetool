.class Lcom/mapbox/mapboxsdk/maps/a0$d;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/maps/a0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/maps/n$a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/n$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/a0$d;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/a0$d;->e:Lcom/mapbox/mapboxsdk/maps/n$a;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/n$a;->b()V

    return-void
.end method

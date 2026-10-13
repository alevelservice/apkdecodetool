.class Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;
.super Ljava/lang/Object;
.source "OfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;->f:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;->f:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->b:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;->f:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->a:Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

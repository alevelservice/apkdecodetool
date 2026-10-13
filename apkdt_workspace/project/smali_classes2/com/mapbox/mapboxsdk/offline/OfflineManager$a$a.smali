.class Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$a;
.super Ljava/lang/Object;
.source "OfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$a;->e:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$a;->e:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->b:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a$a;->e:Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;->a:Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;->onSuccess()V

    :cond_0
    return-void
.end method

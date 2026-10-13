.class Lcom/mapbox/mapboxsdk/p/c$c;
.super Ljava/lang/Object;
.source "AttributionMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/p/c$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/mapbox/mapboxsdk/p/c;[Lcom/mapbox/mapboxsdk/p/c$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/p/c;)Lcom/mapbox/mapboxsdk/p/b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/p/c$d;

    .line 2
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/p/c$d;->a(Lcom/mapbox/mapboxsdk/p/c;)Lcom/mapbox/mapboxsdk/p/b;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

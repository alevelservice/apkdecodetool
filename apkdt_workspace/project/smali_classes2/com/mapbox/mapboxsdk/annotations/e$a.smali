.class Lcom/mapbox/mapboxsdk/annotations/e$a;
.super Ljava/lang/Object;
.source "InfoWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/annotations/e;->a(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/annotations/e;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/annotations/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/e$a;->e:Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/e$a;->e:Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Lcom/mapbox/mapboxsdk/annotations/e;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->i()Lcom/mapbox/mapboxsdk/maps/n$l;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/e$a;->e:Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/e;->b()Lcom/mapbox/mapboxsdk/annotations/Marker;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/n$l;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/e$a;->e:Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/annotations/e;->b(Lcom/mapbox/mapboxsdk/annotations/e;)V

    :cond_1
    return-void
.end method

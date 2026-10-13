.class Lcom/mapbox/mapboxsdk/t/a/i$b;
.super Ljava/lang/Object;
.source "DraggableAnnotationController.java"

# interfaces
.implements Lcom/mapbox/android/gestures/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/t/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/t/a/i;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/t/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i$b;->a:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/t/a/i;Lcom/mapbox/mapboxsdk/t/a/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/i$b;-><init>(Lcom/mapbox/mapboxsdk/t/a/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/c;FF)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i$b;->a:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/i;->a()V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i$b;->a:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/android/gestures/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/mapbox/android/gestures/c;FF)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/i$b;->a:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/android/gestures/c;)Z

    move-result p1

    return p1
.end method

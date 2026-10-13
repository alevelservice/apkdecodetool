.class public Lcom/mapbox/android/gestures/n;
.super Lcom/mapbox/android/gestures/a;
.source "StandardGestureDetector.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/gestures/n$b;,
        Lcom/mapbox/android/gestures/n$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/gestures/a<",
        "Lcom/mapbox/android/gestures/n$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Landroidx/core/view/d;

.field final j:Lcom/mapbox/android/gestures/n$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/gestures/a;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    .line 2
    new-instance p2, Lcom/mapbox/android/gestures/n$a;

    invoke-direct {p2, p0}, Lcom/mapbox/android/gestures/n$a;-><init>(Lcom/mapbox/android/gestures/n;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/n;->j:Lcom/mapbox/android/gestures/n$c;

    .line 3
    new-instance p2, Landroidx/core/view/d;

    iget-object v0, p0, Lcom/mapbox/android/gestures/n;->j:Lcom/mapbox/android/gestures/n$c;

    invoke-direct {p2, p1, v0}, Landroidx/core/view/d;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/n;->i:Landroidx/core/view/d;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/n;->i:Landroidx/core/view/d;

    invoke-virtual {v0, p1}, Landroidx/core/view/d;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

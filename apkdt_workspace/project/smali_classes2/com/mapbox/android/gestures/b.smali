.class public final Lcom/mapbox/android/gestures/b;
.super Ljava/lang/Object;
.source "MoveDistancesObject.java"


# instance fields
.field private final a:F

.field private final b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mapbox/android/gestures/b;->a:F

    .line 3
    iput p2, p0, Lcom/mapbox/android/gestures/b;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/mapbox/android/gestures/b;->e:F

    return v0
.end method

.method public a(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->e:F

    iput v0, p0, Lcom/mapbox/android/gestures/b;->c:F

    .line 2
    iget v0, p0, Lcom/mapbox/android/gestures/b;->f:F

    iput v0, p0, Lcom/mapbox/android/gestures/b;->d:F

    .line 3
    iput p1, p0, Lcom/mapbox/android/gestures/b;->e:F

    .line 4
    iput p2, p0, Lcom/mapbox/android/gestures/b;->f:F

    .line 5
    iget p1, p0, Lcom/mapbox/android/gestures/b;->c:F

    iget p2, p0, Lcom/mapbox/android/gestures/b;->e:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mapbox/android/gestures/b;->g:F

    .line 6
    iget p1, p0, Lcom/mapbox/android/gestures/b;->d:F

    iget v0, p0, Lcom/mapbox/android/gestures/b;->f:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mapbox/android/gestures/b;->h:F

    .line 7
    iget p1, p0, Lcom/mapbox/android/gestures/b;->a:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mapbox/android/gestures/b;->i:F

    .line 8
    iget p1, p0, Lcom/mapbox/android/gestures/b;->b:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mapbox/android/gestures/b;->j:F

    return-void
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->f:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->g:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->i:F

    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->h:F

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/android/gestures/b;->j:F

    return v0
.end method

.class final Lcom/google/android/gms/internal/vision/k7;
.super Lcom/google/android/gms/internal/vision/i7;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/i7<",
        "Lcom/google/android/gms/internal/vision/l7;",
        "Lcom/google/android/gms/internal/vision/l7;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/i7;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/l7;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/vision/s4;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->e()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/vision/s4;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/l7;->a()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    shl-int/lit8 p2, p2, 0x3

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/l7;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/l7;->b(Lcom/google/android/gms/internal/vision/e8;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/vision/l7;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/k7;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/l7;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/l7;->b()I

    move-result p1

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/l7;->a(Lcom/google/android/gms/internal/vision/e8;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/vision/l7;

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/k7;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/l7;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/vision/s4;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    return-object p1
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    check-cast p2, Lcom/google/android/gms/internal/vision/l7;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/l7;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/l7;->a(Lcom/google/android/gms/internal/vision/l7;Lcom/google/android/gms/internal/vision/l7;)Lcom/google/android/gms/internal/vision/l7;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/l7;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/l7;->c()I

    move-result p1

    return p1
.end method

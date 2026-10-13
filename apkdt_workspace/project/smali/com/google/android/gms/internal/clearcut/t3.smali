.class final Lcom/google/android/gms/internal/clearcut/t3;
.super Lcom/google/android/gms/internal/clearcut/r3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/r3<",
        "Lcom/google/android/gms/internal/clearcut/s3;",
        "Lcom/google/android/gms/internal/clearcut/s3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/r3;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/s3;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/d1;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/d1;->zzjp:Lcom/google/android/gms/internal/clearcut/s3;

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/s3;->e()Lcom/google/android/gms/internal/clearcut/s3;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/d1;->zzjp:Lcom/google/android/gms/internal/clearcut/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/s3;->c()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/s3;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/m4;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/s3;->b(Lcom/google/android/gms/internal/clearcut/m4;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/t3;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/s3;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/s3;->a()I

    move-result p1

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/m4;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/s3;->a(Lcom/google/android/gms/internal/clearcut/m4;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/t3;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/s3;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/d1;->zzjp:Lcom/google/android/gms/internal/clearcut/s3;

    return-object p1
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/s3;->d()Lcom/google/android/gms/internal/clearcut/s3;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/clearcut/s3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/s3;->a(Lcom/google/android/gms/internal/clearcut/s3;Lcom/google/android/gms/internal/clearcut/s3;)Lcom/google/android/gms/internal/clearcut/s3;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/s3;->b()I

    move-result p1

    return p1
.end method

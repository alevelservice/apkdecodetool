.class final Lcom/google/android/gms/internal/vision/r3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/vision/a4;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/r3;->b:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/r3;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/a4;->a([B)Lcom/google/android/gms/internal/vision/a4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/r3;->a:Lcom/google/android/gms/internal/vision/a4;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/vision/m3;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/r3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/vision/j3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r3;->a:Lcom/google/android/gms/internal/vision/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/a4;->b()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/t3;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r3;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/t3;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/vision/a4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r3;->a:Lcom/google/android/gms/internal/vision/a4;

    return-object v0
.end method

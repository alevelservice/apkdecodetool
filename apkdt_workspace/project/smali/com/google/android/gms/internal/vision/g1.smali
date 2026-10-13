.class final Lcom/google/android/gms/internal/vision/g1;
.super Lcom/google/android/gms/internal/vision/w0;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/w0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient g:[Ljava/lang/Object;

.field private final transient h:I

.field private final transient i:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/w0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/g1;->g:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/vision/g1;->h:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/g1;->i:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/g1;->i:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/j0;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g1;->g:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/g1;->h:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/g1;->i:I

    return v0
.end method

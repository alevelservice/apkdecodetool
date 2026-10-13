.class final Lcom/google/android/gms/internal/vision/z0;
.super Lcom/google/android/gms/internal/vision/w0;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/w0<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzlt:Lcom/google/android/gms/internal/vision/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/w0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient g:[Ljava/lang/Object;

.field private final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/z0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/vision/z0;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/z0;->zzlt:Lcom/google/android/gms/internal/vision/w0;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/w0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/z0;->g:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/j0;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/z0;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/z0;->g:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    add-int/2addr p2, p1

    return p2
.end method

.method final zzbz()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/z0;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzca()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzcb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/z0;->h:I

    return v0
.end method

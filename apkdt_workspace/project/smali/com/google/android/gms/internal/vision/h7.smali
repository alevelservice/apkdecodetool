.class final Lcom/google/android/gms/internal/vision/h7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/g7;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/vision/j3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/h7;->a:Lcom/google/android/gms/internal/vision/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/h7;->a:Lcom/google/android/gms/internal/vision/j3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/j3;->zzan(I)B

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/h7;->a:Lcom/google/android/gms/internal/vision/j3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/j3;->size()I

    move-result v0

    return v0
.end method

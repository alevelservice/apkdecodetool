.class final Lcom/google/android/gms/vision/clearcut/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:Lcom/google/android/gms/internal/vision/f2;

.field private final synthetic g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;


# direct methods
.method constructor <init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILcom/google/android/gms/internal/vision/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/vision/clearcut/a;->g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    iput p2, p0, Lcom/google/android/gms/vision/clearcut/a;->e:I

    iput-object p3, p0, Lcom/google/android/gms/vision/clearcut/a;->f:Lcom/google/android/gms/internal/vision/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/a;->g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/vision/clearcut/a;->e:I

    iget-object v2, p0, Lcom/google/android/gms/vision/clearcut/a;->f:Lcom/google/android/gms/internal/vision/f2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb(ILcom/google/android/gms/internal/vision/f2;)V

    return-void
.end method

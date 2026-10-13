.class final Lcom/google/android/gms/internal/vision/l;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/vision/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/j;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/l;->a:Lcom/google/android/gms/internal/vision/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/l;->a:Lcom/google/android/gms/internal/vision/j;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/j;->a()V

    return-void
.end method

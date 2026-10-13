.class final synthetic Lcom/google/android/gms/internal/ads/h10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/d10;

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d10;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h10;->e:Lcom/google/android/gms/internal/ads/d10;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/h10;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h10;->e:Lcom/google/android/gms/internal/ads/d10;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/h10;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/d10;->a(Z)V

    return-void
.end method

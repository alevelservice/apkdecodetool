.class final Lcom/google/android/gms/internal/ads/if1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:Z

.field private final synthetic g:Lcom/google/android/gms/internal/ads/cf1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cf1;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/if1;->g:Lcom/google/android/gms/internal/ads/cf1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/if1;->e:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/if1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if1;->g:Lcom/google/android/gms/internal/ads/cf1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/if1;->e:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/if1;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cf1;->b(IZ)Lcom/google/android/gms/internal/ads/ev;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/if1;->g:Lcom/google/android/gms/internal/ads/cf1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cf1;->a(Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/ev;)Lcom/google/android/gms/internal/ads/ev;

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/if1;->e:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cf1;->b(ILcom/google/android/gms/internal/ads/ev;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if1;->g:Lcom/google/android/gms/internal/ads/cf1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/if1;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/if1;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cf1;->a(IZ)V

    :cond_0
    return-void
.end method

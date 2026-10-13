.class final Lcom/google/android/gms/internal/ads/vl1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/uq1;

.field private final f:Lcom/google/android/gms/internal/ads/hw1;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uq1;Lcom/google/android/gms/internal/ads/hw1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vl1;->f:Lcom/google/android/gms/internal/ads/hw1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vl1;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq1;->d()Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->f:Lcom/google/android/gms/internal/ads/hw1;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hw1;->c:Lcom/google/android/gms/internal/ads/r0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vl1;->f:Lcom/google/android/gms/internal/ads/hw1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hw1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq1;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vl1;->f:Lcom/google/android/gms/internal/ads/hw1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/hw1;->c:Lcom/google/android/gms/internal/ads/r0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq1;->a(Lcom/google/android/gms/internal/ads/r0;)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->f:Lcom/google/android/gms/internal/ads/hw1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/hw1;->d:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq1;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->e:Lcom/google/android/gms/internal/ads/uq1;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq1;->b(Ljava/lang/String;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vl1;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

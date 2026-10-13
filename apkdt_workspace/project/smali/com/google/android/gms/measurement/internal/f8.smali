.class final Lcom/google/android/gms/measurement/internal/f8;
.super Lcom/google/android/gms/measurement/internal/b;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/g8;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/c8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c8;Lcom/google/android/gms/measurement/internal/h5;Lcom/google/android/gms/measurement/internal/g8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f8;->f:Lcom/google/android/gms/measurement/internal/c8;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/f8;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/h5;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f8;->f:Lcom/google/android/gms/measurement/internal/c8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c8;->s()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f8;->f:Lcom/google/android/gms/measurement/internal/c8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f8;->e:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->l()V

    return-void
.end method

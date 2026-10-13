.class final Lcom/google/android/gms/measurement/internal/y3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/j4;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/f3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z3;Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/f3;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Lcom/google/android/gms/measurement/internal/j4;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y3;->f:Lcom/google/android/gms/measurement/internal/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->h()Lcom/google/android/gms/measurement/internal/u3;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y3;->f:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->h()Lcom/google/android/gms/measurement/internal/u3;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/u3;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->t()V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/u3;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u3;->a(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/android/gms/measurement/internal/k4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/m5;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/j4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->f:Lcom/google/android/gms/measurement/internal/j4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k4;->e:Lcom/google/android/gms/measurement/internal/m5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k4;->f:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k4;->e:Lcom/google/android/gms/measurement/internal/m5;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/j4;->a(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/m5;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k4;->f:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->d()V

    return-void
.end method

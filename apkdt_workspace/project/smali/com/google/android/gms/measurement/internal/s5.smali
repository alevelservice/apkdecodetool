.class final Lcom/google/android/gms/measurement/internal/s5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/k5;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/p5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p5;Lcom/google/android/gms/measurement/internal/k5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s5;->f:Lcom/google/android/gms/measurement/internal/p5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s5;->e:Lcom/google/android/gms/measurement/internal/k5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s5;->f:Lcom/google/android/gms/measurement/internal/p5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s5;->e:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p5;->a(Lcom/google/android/gms/measurement/internal/k5;)V

    return-void
.end method

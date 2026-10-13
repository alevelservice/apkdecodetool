.class final Lcom/google/android/gms/measurement/internal/e6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Z

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/p5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p5;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e6;->f:Lcom/google/android/gms/measurement/internal/p5;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/e6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e6;->f:Lcom/google/android/gms/measurement/internal/p5;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/e6;->e:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/p5;->a(Lcom/google/android/gms/measurement/internal/p5;Z)V

    return-void
.end method

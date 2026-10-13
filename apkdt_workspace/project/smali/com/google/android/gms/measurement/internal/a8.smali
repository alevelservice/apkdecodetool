.class final Lcom/google/android/gms/measurement/internal/a8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:J

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/v7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v7;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a8;->f:Lcom/google/android/gms/measurement/internal/v7;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/a8;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a8;->f:Lcom/google/android/gms/measurement/internal/v7;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/a8;->e:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/v7;->b(Lcom/google/android/gms/measurement/internal/v7;J)V

    return-void
.end method

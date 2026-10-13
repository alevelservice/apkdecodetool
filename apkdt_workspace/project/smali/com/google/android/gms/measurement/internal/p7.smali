.class final Lcom/google/android/gms/measurement/internal/p7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/m7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p7;->e:Lcom/google/android/gms/measurement/internal/m7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p7;->e:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/zzdx;)Lcom/google/android/gms/measurement/internal/zzdx;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p7;->e:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u6;->b(Lcom/google/android/gms/measurement/internal/u6;)V

    return-void
.end method

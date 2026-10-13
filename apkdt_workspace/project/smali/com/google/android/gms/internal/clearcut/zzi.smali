.class final Lcom/google/android/gms/internal/clearcut/zzi;
.super Lcom/google/android/gms/internal/clearcut/zzg;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/clearcut/i5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/clearcut/i5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzi;->e:Lcom/google/android/gms/internal/clearcut/i5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzg;-><init>(Lcom/google/android/gms/internal/clearcut/u3;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzi;->e:Lcom/google/android/gms/internal/clearcut/i5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

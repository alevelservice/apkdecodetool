.class final Lcom/google/android/gms/internal/measurement/k;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:I

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/Object;

.field private final synthetic l:Ljava/lang/Object;

.field private final synthetic m:Ljava/lang/Object;

.field private final synthetic n:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k;->n:Lcom/google/android/gms/internal/measurement/zzz;

    const/4 p2, 0x5

    iput p2, p0, Lcom/google/android/gms/internal/measurement/k;->i:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/k;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/k;->k:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k;->l:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k;->m:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k;->n:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/k;->i:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/k;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k;->k:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k;->l:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k;->m:Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzk;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

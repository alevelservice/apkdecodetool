.class final Lcom/google/android/gms/internal/measurement/c;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:Landroid/app/Activity;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/c;->l:Lcom/google/android/gms/internal/measurement/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/c;->i:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/c;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/c;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c;->l:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c;->i:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/c;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/c;->k:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzz$a;->e:J

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzk;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

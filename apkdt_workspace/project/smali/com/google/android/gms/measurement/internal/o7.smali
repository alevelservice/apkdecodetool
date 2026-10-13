.class final Lcom/google/android/gms/measurement/internal/o7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Landroid/content/ComponentName;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/m7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m7;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->f:Lcom/google/android/gms/measurement/internal/m7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m7;->g:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o7;->e:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/u6;Landroid/content/ComponentName;)V

    return-void
.end method

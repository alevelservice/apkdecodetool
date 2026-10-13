.class public final Li/z;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/z$a;
    }
.end annotation


# instance fields
.field final a:Li/s;

.field final b:Ljava/lang/String;

.field final c:Li/r;

.field final d:Li/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Li/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Li/z$a;->a:Li/s;

    iput-object v0, p0, Li/z;->a:Li/s;

    .line 3
    iget-object v0, p1, Li/z$a;->b:Ljava/lang/String;

    iput-object v0, p0, Li/z;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Li/z$a;->c:Li/r$a;

    invoke-virtual {v0}, Li/r$a;->a()Li/r;

    move-result-object v0

    iput-object v0, p0, Li/z;->c:Li/r;

    .line 5
    iget-object v0, p1, Li/z$a;->d:Li/a0;

    iput-object v0, p0, Li/z;->d:Li/a0;

    .line 6
    iget-object p1, p1, Li/z$a;->e:Ljava/util/Map;

    invoke-static {p1}, Li/g0/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Li/z;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Li/a0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Li/z;->d:Li/a0;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/z;->c:Li/r;

    invoke-virtual {v0, p1}, Li/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Li/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/z;->f:Li/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li/z;->c:Li/r;

    invoke-static {v0}, Li/d;->a(Li/r;)Li/d;

    move-result-object v0

    iput-object v0, p0, Li/z;->f:Li/d;

    :goto_0
    return-object v0
.end method

.method public c()Li/r;
    .locals 1

    .line 1
    iget-object v0, p0, Li/z;->c:Li/r;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/z;->a:Li/s;

    invoke-virtual {v0}, Li/s;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Li/z$a;
    .locals 1

    .line 1
    new-instance v0, Li/z$a;

    invoke-direct {v0, p0}, Li/z$a;-><init>(Li/z;)V

    return-object v0
.end method

.method public g()Li/s;
    .locals 1

    .line 1
    iget-object v0, p0, Li/z;->a:Li/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/z;->a:Li/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/z;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

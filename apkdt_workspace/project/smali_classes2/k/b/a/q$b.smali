.class Lk/b/a/q$b;
.super Lk/b/a/w/c;
.source "ZoneId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/b/a/q;->getDisplayName(Lk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lk/b/a/q;


# direct methods
.method constructor <init>(Lk/b/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/a/q$b;->e:Lk/b/a/q;

    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lk/b/a/q$b;->e:Lk/b/a/q;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/alibaba/fastjson/a/m;
.super Ljava/lang/Object;
.source "ParseContext.java"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Lcom/alibaba/fastjson/a/m;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/reflect/Type;

.field private transient e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson/a/m;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/m;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    if-nez v0, :cond_0

    const-string v0, "$"

    .line 3
    iput-object v0, p0, Lcom/alibaba/fastjson/a/m;->e:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/m;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/m;->e:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/m;->e:Ljava/lang/String;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/m;->e:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/fruitsmobile/basket/opengl/GLES20;
.super Ljava/lang/Object;
.source "GLES20.java"

# interfaces
.implements Lcom/fruitsmobile/basket/opengl/GL20;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 8
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLES20;->nativeClassInit()V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public bglCompileShader(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fruitsmobile/basket/opengl/GLES20;->bglCompileShader(I[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fruitsmobile/basket/opengl/GLES20;->bglCompileShader(I[B)I

    move-result v1

    goto :goto_0
.end method

.method public native bglCompileShader(I[B)I
.end method

.method public native bglLinkProgram(II)I
.end method

.method public native bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V
.end method

.method public native glActiveTexture(I)V
.end method

.method public native glAttachShader(II)V
.end method

.method public native glBindAttribLocation(IILjava/lang/String;)V
.end method

.method public native glBindBuffer(II)V
.end method

.method public native glBindFramebuffer(II)V
.end method

.method public native glBindRenderbuffer(II)V
.end method

.method public native glBindTexture(II)V
.end method

.method public native glBlendColor(FFFF)V
.end method

.method public native glBlendEquation(I)V
.end method

.method public native glBlendEquationSeparate(II)V
.end method

.method public native glBlendFunc(II)V
.end method

.method public native glBlendFuncSeparate(IIII)V
.end method

.method public native glCheckFramebufferStatus(I)I
.end method

.method public native glClear(I)V
.end method

.method public native glClearColor(FFFF)V
.end method

.method public native glClearColorx(IIII)V
.end method

.method public native glClearDepthf(F)V
.end method

.method public native glClearStencil(I)V
.end method

.method public native glColorMask(ZZZZ)V
.end method

.method public native glCompileShader(I)V
.end method

.method public native glCopyTexImage2D(IIIIIIII)V
.end method

.method public native glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public native glCreateProgram()I
.end method

.method public native glCreateShader(I)I
.end method

.method public native glCullFace(I)V
.end method

.method public native glDeleteProgram(I)V
.end method

.method public native glDeleteShader(I)V
.end method

.method public native glDeleteTexture(I)V
.end method

.method public native glDepthFunc(I)V
.end method

.method public native glDepthMask(Z)V
.end method

.method public native glDepthRangef(FF)V
.end method

.method public native glDetachShader(II)V
.end method

.method public native glDisable(I)V
.end method

.method public native glDisableVertexAttribArray(I)V
.end method

.method public native glDrawArrays(III)V
.end method

.method public native glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public native glEnable(I)V
.end method

.method public native glEnableVertexAttribArray(I)V
.end method

.method public native glFinish()V
.end method

.method public native glFlush()V
.end method

.method public native glFramebufferRenderbuffer(IIII)V
.end method

.method public native glFramebufferTexture2D(IIIII)V
.end method

.method public native glFrontFace(I)V
.end method

.method public native glGenTexture()I
.end method

.method public native glGenerateMipmap(I)V
.end method

.method public native glGetAttribLocation(ILjava/lang/String;)I
.end method

.method public native glGetError()I
.end method

.method public native glGetProgramInfoLog(I)Ljava/lang/String;
.end method

.method public native glGetShaderInfoLog(I)Ljava/lang/String;
.end method

.method public native glGetString(I)Ljava/lang/String;
.end method

.method public native glGetUniformLocation(ILjava/lang/String;)I
.end method

.method public native glHint(II)V
.end method

.method public native glIsBuffer(I)Z
.end method

.method public native glIsEnabled(I)Z
.end method

.method public native glIsFramebuffer(I)Z
.end method

.method public native glIsProgram(I)Z
.end method

.method public native glIsRenderbuffer(I)Z
.end method

.method public native glIsShader(I)Z
.end method

.method public native glIsTexture(I)Z
.end method

.method public native glLineWidth(F)V
.end method

.method public native glLinkProgram(I)V
.end method

.method public native glPixelStorei(II)V
.end method

.method public native glPolygonOffset(FF)V
.end method

.method public native glReleaseShaderCompiler()V
.end method

.method public native glRenderbufferStorage(IIII)V
.end method

.method public native glSampleCoverage(FZ)V
.end method

.method public native glScissor(IIII)V
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 2
    .param p1, "shader"    # I
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 242
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fruitsmobile/basket/opengl/GLES20;->glShaderSource(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fruitsmobile/basket/opengl/GLES20;->glShaderSource(I[B)V

    goto :goto_0
.end method

.method public native glShaderSource(I[B)V
.end method

.method public native glStencilFunc(III)V
.end method

.method public native glStencilFuncSeparate(IIII)V
.end method

.method public native glStencilMask(I)V
.end method

.method public native glStencilMaskSeparate(II)V
.end method

.method public native glStencilOp(III)V
.end method

.method public native glStencilOpSeparate(IIII)V
.end method

.method public native glTexParameterf(IIF)V
.end method

.method public native glTexParameteri(III)V
.end method

.method public native glUniform1f(IF)V
.end method

.method public native glUniform1i(II)V
.end method

.method public native glUniform2f(IFF)V
.end method

.method public native glUniform2i(III)V
.end method

.method public native glUniform3f(IFFF)V
.end method

.method public native glUniform3i(IIII)V
.end method

.method public native glUniform4f(IFFFF)V
.end method

.method public native glUniform4i(IIIII)V
.end method

.method public native glUniformMatrix4fv(IIZLjava/nio/Buffer;)V
.end method

.method public native glUseProgram(I)V
.end method

.method public native glValidateProgram(I)V
.end method

.method public glVersion()I
    .locals 1

    .prologue
    .line 13
    const/high16 v0, 0x20000

    return v0
.end method

.method public native glVertexAttrib1f(IF)V
.end method

.method public native glVertexAttrib2f(IFF)V
.end method

.method public native glVertexAttrib3f(IFFF)V
.end method

.method public native glVertexAttrib4f(IFFFF)V
.end method

.method public native glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
.end method

.method public native glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V
.end method

.method public native glViewport(IIII)V
.end method

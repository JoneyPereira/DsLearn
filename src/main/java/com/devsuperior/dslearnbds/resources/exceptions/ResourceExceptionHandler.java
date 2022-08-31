package com.devsuperior.dslearnbds.resources.exceptions;

import com.devsuperior.dslearnbds.services.execeptions.DatabaseException;
import com.devsuperior.dslearnbds.services.execeptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.execeptions.ResourceNotFoundException;
import com.devsuperior.dslearnbds.services.execeptions.UnauthorizeException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;

@ControllerAdvice
public class ResourceExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<StanderError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request){

        StanderError erro = new StanderError();
        erro.setTimestamp(Instant.now());
        erro.setStatus(HttpStatus.NOT_FOUND.value());
        erro.setError("Recurso não encontrado!");
        erro.setMessage(e.getMessage());
        erro.setPath(request.getRequestURI());

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(erro);
    }

    @ExceptionHandler(DatabaseException.class)
    public ResponseEntity<StanderError> database(DatabaseException e, HttpServletRequest request){

        StanderError erro = new StanderError();
        erro.setTimestamp(Instant.now());
        erro.setStatus(HttpStatus.BAD_REQUEST.value());;
        erro.setError("Recurso não permitido!");
        erro.setMessage(e.getMessage());
        erro.setPath(request.getRequestURI());

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(erro);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ValidationError> validation(MethodArgumentNotValidException e, HttpServletRequest request){

        ValidationError erro = new ValidationError();
        erro.setTimestamp(Instant.now());
        erro.setStatus(HttpStatus.UNPROCESSABLE_ENTITY.value());
        erro.setError("Recurso não validado!");
        erro.setMessage(e.getMessage());
        erro.setPath(request.getRequestURI());

        for(FieldError f : e.getBindingResult().getFieldErrors()){
            erro.addError(f.getField(), f.getDefaultMessage());
        }

        return ResponseEntity.status(HttpStatus.UNPROCESSABLE_ENTITY).body(erro);
    }

    @ExceptionHandler(ForbiddenException.class)
    public ResponseEntity<OAuthCustomError> forbidden(ForbiddenException e, HttpServletRequest request){

        OAuthCustomError erro = new OAuthCustomError("Forbidden", e.getMessage());

        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(erro);
    }

    @ExceptionHandler(UnauthorizeException.class)
    public ResponseEntity<OAuthCustomError> unauthorize(ForbiddenException e, HttpServletRequest request){

        OAuthCustomError erro = new OAuthCustomError("UnauthorizeException", e.getMessage());

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(erro);
    }
}
